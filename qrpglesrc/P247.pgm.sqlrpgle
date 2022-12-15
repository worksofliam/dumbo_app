**free

ctl-opt dftactgrp(*no);

dcl-pi P247;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'

dcl-ds T189 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T189 FROM T189 LIMIT 1;

theCharVar = 'Hello from P247';
dsply theCharVar;
callp localProc();
P72();
P67();
P239();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P247 in the procedure';
end-proc;