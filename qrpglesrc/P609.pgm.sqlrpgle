**free

ctl-opt dftactgrp(*no);

dcl-pi P609;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P373.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'

dcl-ds T230 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T230 FROM T230 LIMIT 1;

theCharVar = 'Hello from P609';
dsply theCharVar;
callp localProc();
P235();
P373();
P198();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P609 in the procedure';
end-proc;