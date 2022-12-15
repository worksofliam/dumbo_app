**free

ctl-opt dftactgrp(*no);

dcl-pi P219;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'

dcl-ds T68 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T68 FROM T68 LIMIT 1;

theCharVar = 'Hello from P219';
dsply theCharVar;
callp localProc();
P181();
P32();
P130();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P219 in the procedure';
end-proc;