**free

ctl-opt dftactgrp(*no);

dcl-pi P288;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P220.rpgleinc'

dcl-ds T177 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T177 FROM T177 LIMIT 1;

theCharVar = 'Hello from P288';
dsply theCharVar;
callp localProc();
P21();
P12();
P220();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P288 in the procedure';
end-proc;