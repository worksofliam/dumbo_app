**free

ctl-opt dftactgrp(*no);

dcl-pi P949;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P357.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'

dcl-ds T68 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T68 FROM T68 LIMIT 1;

theCharVar = 'Hello from P949';
dsply theCharVar;
callp localProc();
P216();
P357();
P107();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P949 in the procedure';
end-proc;