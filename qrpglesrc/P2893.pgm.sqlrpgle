**free

ctl-opt dftactgrp(*no);

dcl-pi P2893;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2616.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P638.rpgleinc'

dcl-ds theTable extname('T357') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T357 LIMIT 1;

theCharVar = 'Hello from P2893';
dsply theCharVar;
callp localProc();
P2616();
P223();
P638();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2893 in the procedure';
end-proc;