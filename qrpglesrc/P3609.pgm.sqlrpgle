**free

ctl-opt dftactgrp(*no);

dcl-pi P3609;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2079.rpgleinc'
/copy 'qrpgleref/P3292.rpgleinc'
/copy 'qrpgleref/P2142.rpgleinc'

dcl-ds T126 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T126 FROM T126 LIMIT 1;

theCharVar = 'Hello from P3609';
dsply theCharVar;
callp localProc();
P2079();
P3292();
P2142();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3609 in the procedure';
end-proc;