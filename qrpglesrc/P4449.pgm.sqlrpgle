**free

ctl-opt dftactgrp(*no);

dcl-pi P4449;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2704.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P2176.rpgleinc'

dcl-ds T1249 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1249 FROM T1249 LIMIT 1;

theCharVar = 'Hello from P4449';
dsply theCharVar;
P2704();
P266();
P2176();
return;