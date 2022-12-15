**free

ctl-opt dftactgrp(*no);

dcl-pi P26;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds T103 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T103 FROM T103 LIMIT 1;

theCharVar = 'Hello from P26';
dsply theCharVar;
callp localProc();
P17();
P19();
P18();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P26 in the procedure';
end-proc;