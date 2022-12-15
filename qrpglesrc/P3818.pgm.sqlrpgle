**free

ctl-opt dftactgrp(*no);

dcl-pi P3818;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P480.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P3577.rpgleinc'

dcl-ds T641 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T641 FROM T641 LIMIT 1;

theCharVar = 'Hello from P3818';
dsply theCharVar;
callp localProc();
P480();
P64();
P3577();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3818 in the procedure';
end-proc;