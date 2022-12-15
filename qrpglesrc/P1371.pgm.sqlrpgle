**free

ctl-opt dftactgrp(*no);

dcl-pi P1371;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P728.rpgleinc'
/copy 'qrpgleref/P619.rpgleinc'
/copy 'qrpgleref/P586.rpgleinc'

dcl-ds theTable extname('T45') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T45 LIMIT 1;

theCharVar = 'Hello from P1371';
dsply theCharVar;
callp localProc();
P728();
P619();
P586();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1371 in the procedure';
end-proc;