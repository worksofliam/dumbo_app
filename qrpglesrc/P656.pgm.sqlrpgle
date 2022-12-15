**free

ctl-opt dftactgrp(*no);

dcl-pi P656;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P576.rpgleinc'
/copy 'qrpgleref/P597.rpgleinc'

dcl-ds T433 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T433 FROM T433 LIMIT 1;

theCharVar = 'Hello from P656';
dsply theCharVar;
callp localProc();
P243();
P576();
P597();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P656 in the procedure';
end-proc;