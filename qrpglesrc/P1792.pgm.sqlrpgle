**free

ctl-opt dftactgrp(*no);

dcl-pi P1792;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1493.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P1615.rpgleinc'

dcl-ds T326 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T326 FROM T326 LIMIT 1;

theCharVar = 'Hello from P1792';
dsply theCharVar;
callp localProc();
P1493();
P223();
P1615();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1792 in the procedure';
end-proc;