**free

ctl-opt dftactgrp(*no);

dcl-pi P927;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P538.rpgleinc'
/copy 'qrpgleref/P746.rpgleinc'

dcl-ds theTable extname('T73') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T73 LIMIT 1;

theCharVar = 'Hello from P927';
dsply theCharVar;
callp localProc();
P15();
P538();
P746();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P927 in the procedure';
end-proc;