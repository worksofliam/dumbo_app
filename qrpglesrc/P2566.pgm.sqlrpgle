**free

ctl-opt dftactgrp(*no);

dcl-pi P2566;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1281.rpgleinc'
/copy 'qrpgleref/P1721.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'

dcl-ds T1492 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1492 FROM T1492 LIMIT 1;

theCharVar = 'Hello from P2566';
dsply theCharVar;
callp localProc();
P1281();
P1721();
P458();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2566 in the procedure';
end-proc;