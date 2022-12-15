**free

ctl-opt dftactgrp(*no);

dcl-pi P131;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'

dcl-ds T120 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T120 FROM T120 LIMIT 1;

theCharVar = 'Hello from P131';
dsply theCharVar;
callp localProc();
P102();
P114();
P121();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P131 in the procedure';
end-proc;