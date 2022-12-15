**free

ctl-opt dftactgrp(*no);

dcl-pi P274;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'

dcl-ds T301 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T301 FROM T301 LIMIT 1;

theCharVar = 'Hello from P274';
dsply theCharVar;
callp localProc();
P176();
P194();
P262();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P274 in the procedure';
end-proc;