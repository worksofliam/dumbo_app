**free

ctl-opt dftactgrp(*no);

dcl-pi P2019;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P764.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P369.rpgleinc'

dcl-ds T203 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T203 FROM T203 LIMIT 1;

theCharVar = 'Hello from P2019';
dsply theCharVar;
callp localProc();
P764();
P195();
P369();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2019 in the procedure';
end-proc;