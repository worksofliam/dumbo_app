**free

ctl-opt dftactgrp(*no);

dcl-pi P174;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'

dcl-ds T817 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T817 FROM T817 LIMIT 1;

theCharVar = 'Hello from P174';
dsply theCharVar;
callp localProc();
P8();
P141();
P169();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P174 in the procedure';
end-proc;