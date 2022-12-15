**free

ctl-opt dftactgrp(*no);

dcl-pi P138;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'

dcl-ds T188 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T188 FROM T188 LIMIT 1;

theCharVar = 'Hello from P138';
dsply theCharVar;
callp localProc();
P73();
P102();
P58();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P138 in the procedure';
end-proc;