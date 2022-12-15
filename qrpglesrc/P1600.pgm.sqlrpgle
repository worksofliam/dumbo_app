**free

ctl-opt dftactgrp(*no);

dcl-pi P1600;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P626.rpgleinc'

dcl-ds T992 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T992 FROM T992 LIMIT 1;

theCharVar = 'Hello from P1600';
dsply theCharVar;
callp localProc();
P58();
P107();
P626();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1600 in the procedure';
end-proc;