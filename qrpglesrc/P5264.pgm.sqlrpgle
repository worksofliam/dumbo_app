**free

ctl-opt dftactgrp(*no);

dcl-pi P5264;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1232.rpgleinc'
/copy 'qrpgleref/P588.rpgleinc'
/copy 'qrpgleref/P1114.rpgleinc'

dcl-ds T977 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T977 FROM T977 LIMIT 1;

theCharVar = 'Hello from P5264';
dsply theCharVar;
callp localProc();
P1232();
P588();
P1114();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5264 in the procedure';
end-proc;