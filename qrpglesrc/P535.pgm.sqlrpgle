**free

ctl-opt dftactgrp(*no);

dcl-pi P535;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P469.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'

dcl-ds theTable extname('T1521') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1521 LIMIT 1;

theCharVar = 'Hello from P535';
dsply theCharVar;
callp localProc();
P353();
P469();
P484();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P535 in the procedure';
end-proc;