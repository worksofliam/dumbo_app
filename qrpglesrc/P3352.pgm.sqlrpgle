**free

ctl-opt dftactgrp(*no);

dcl-pi P3352;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1316.rpgleinc'
/copy 'qrpgleref/P1313.rpgleinc'
/copy 'qrpgleref/P2455.rpgleinc'

dcl-ds T251 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T251 FROM T251 LIMIT 1;

theCharVar = 'Hello from P3352';
dsply theCharVar;
callp localProc();
P1316();
P1313();
P2455();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3352 in the procedure';
end-proc;