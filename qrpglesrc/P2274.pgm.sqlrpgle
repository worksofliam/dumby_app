**free

ctl-opt dftactgrp(*no);

dcl-pi P2274;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1058.rpgleinc'
/copy 'qrpgleref/P1418.rpgleinc'
/copy 'qrpgleref/P406.rpgleinc'

dcl-ds theTable extname('T103') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T103 LIMIT 1;

theCharVar = 'Hello from P2274';
dsply theCharVar;
callp localProc();
P1058();
P1418();
P406();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2274 in the procedure';
end-proc;