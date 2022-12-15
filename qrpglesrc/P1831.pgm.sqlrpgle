**free

ctl-opt dftactgrp(*no);

dcl-pi P1831;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P311.rpgleinc'
/copy 'qrpgleref/P731.rpgleinc'
/copy 'qrpgleref/P901.rpgleinc'

dcl-ds theTable extname('T926') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T926 LIMIT 1;

theCharVar = 'Hello from P1831';
dsply theCharVar;
callp localProc();
P311();
P731();
P901();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1831 in the procedure';
end-proc;