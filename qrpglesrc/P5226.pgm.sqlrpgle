**free

ctl-opt dftactgrp(*no);

dcl-pi P5226;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1517.rpgleinc'
/copy 'qrpgleref/P3616.rpgleinc'
/copy 'qrpgleref/P1066.rpgleinc'

dcl-ds T1828 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1828 FROM T1828 LIMIT 1;

theCharVar = 'Hello from P5226';
dsply theCharVar;
callp localProc();
P1517();
P3616();
P1066();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5226 in the procedure';
end-proc;