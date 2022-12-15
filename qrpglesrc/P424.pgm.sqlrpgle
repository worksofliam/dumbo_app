**free

ctl-opt dftactgrp(*no);

dcl-pi P424;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P191.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'

dcl-ds T1048 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1048 FROM T1048 LIMIT 1;

theCharVar = 'Hello from P424';
dsply theCharVar;
callp localProc();
P126();
P191();
P338();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P424 in the procedure';
end-proc;