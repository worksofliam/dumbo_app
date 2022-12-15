**free

ctl-opt dftactgrp(*no);

dcl-pi P480;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'

dcl-ds T182 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T182 FROM T182 LIMIT 1;

theCharVar = 'Hello from P480';
dsply theCharVar;
callp localProc();
P246();
P286();
P158();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P480 in the procedure';
end-proc;