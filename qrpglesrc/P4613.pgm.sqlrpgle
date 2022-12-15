**free

ctl-opt dftactgrp(*no);

dcl-pi P4613;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1107.rpgleinc'
/copy 'qrpgleref/P2857.rpgleinc'
/copy 'qrpgleref/P720.rpgleinc'

dcl-ds T482 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T482 FROM T482 LIMIT 1;

theCharVar = 'Hello from P4613';
dsply theCharVar;
callp localProc();
P1107();
P2857();
P720();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4613 in the procedure';
end-proc;