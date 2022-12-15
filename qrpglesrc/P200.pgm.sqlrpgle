**free

ctl-opt dftactgrp(*no);

dcl-pi P200;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'

dcl-ds T674 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T674 FROM T674 LIMIT 1;

theCharVar = 'Hello from P200';
dsply theCharVar;
callp localProc();
P72();
P136();
P169();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P200 in the procedure';
end-proc;