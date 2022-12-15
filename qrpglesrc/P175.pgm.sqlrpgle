**free

ctl-opt dftactgrp(*no);

dcl-pi P175;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds T695 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T695 FROM T695 LIMIT 1;

theCharVar = 'Hello from P175';
dsply theCharVar;
callp localProc();
P42();
P7();
P19();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P175 in the procedure';
end-proc;