**free

ctl-opt dftactgrp(*no);

dcl-pi P5093;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P406.rpgleinc'
/copy 'qrpgleref/P4320.rpgleinc'
/copy 'qrpgleref/P1347.rpgleinc'

dcl-ds T453 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T453 FROM T453 LIMIT 1;

theCharVar = 'Hello from P5093';
dsply theCharVar;
callp localProc();
P406();
P4320();
P1347();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5093 in the procedure';
end-proc;