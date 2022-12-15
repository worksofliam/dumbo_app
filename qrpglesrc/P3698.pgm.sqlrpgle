**free

ctl-opt dftactgrp(*no);

dcl-pi P3698;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P1220.rpgleinc'
/copy 'qrpgleref/P2666.rpgleinc'

dcl-ds T125 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T125 FROM T125 LIMIT 1;

theCharVar = 'Hello from P3698';
dsply theCharVar;
callp localProc();
P117();
P1220();
P2666();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3698 in the procedure';
end-proc;