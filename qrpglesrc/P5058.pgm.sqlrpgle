**free

ctl-opt dftactgrp(*no);

dcl-pi P5058;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2795.rpgleinc'
/copy 'qrpgleref/P4707.rpgleinc'
/copy 'qrpgleref/P1981.rpgleinc'

dcl-ds theTable extname('T289') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T289 LIMIT 1;

theCharVar = 'Hello from P5058';
dsply theCharVar;
callp localProc();
P2795();
P4707();
P1981();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5058 in the procedure';
end-proc;