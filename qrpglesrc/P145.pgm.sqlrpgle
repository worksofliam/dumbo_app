**free

ctl-opt dftactgrp(*no);

dcl-pi P145;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'

dcl-ds T945 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T945 FROM T945 LIMIT 1;

theCharVar = 'Hello from P145';
dsply theCharVar;
callp localProc();
P119();
P32();
P106();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P145 in the procedure';
end-proc;