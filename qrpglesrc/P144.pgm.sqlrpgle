**free

ctl-opt dftactgrp(*no);

dcl-pi P144;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'

dcl-ds T890 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T890 FROM T890 LIMIT 1;

theCharVar = 'Hello from P144';
dsply theCharVar;
callp localProc();
P60();
P111();
P48();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P144 in the procedure';
end-proc;