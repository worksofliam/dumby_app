**free

ctl-opt dftactgrp(*no);

dcl-pi P6;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T355') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T355 LIMIT 1;

theCharVar = 'Hello from P6';
dsply theCharVar;
callp localProc();
P4();
P3();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P6 in the procedure';
end-proc;