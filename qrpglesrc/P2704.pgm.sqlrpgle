**free

ctl-opt dftactgrp(*no);

dcl-pi P2704;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P2186.rpgleinc'
/copy 'qrpgleref/P1090.rpgleinc'

dcl-ds theTable extname('T326') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T326 LIMIT 1;

theCharVar = 'Hello from P2704';
dsply theCharVar;
callp localProc();
P353();
P2186();
P1090();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2704 in the procedure';
end-proc;