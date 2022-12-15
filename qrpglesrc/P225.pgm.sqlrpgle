**free

ctl-opt dftactgrp(*no);

dcl-pi P225;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'

dcl-ds T148 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T148 FROM T148 LIMIT 1;

theCharVar = 'Hello from P225';
dsply theCharVar;
callp localProc();
P136();
P129();
P60();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P225 in the procedure';
end-proc;