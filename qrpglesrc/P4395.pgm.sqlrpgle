**free

ctl-opt dftactgrp(*no);

dcl-pi P4395;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4043.rpgleinc'
/copy 'qrpgleref/P3455.rpgleinc'
/copy 'qrpgleref/P3650.rpgleinc'

dcl-ds T431 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T431 FROM T431 LIMIT 1;

theCharVar = 'Hello from P4395';
dsply theCharVar;
callp localProc();
P4043();
P3455();
P3650();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4395 in the procedure';
end-proc;