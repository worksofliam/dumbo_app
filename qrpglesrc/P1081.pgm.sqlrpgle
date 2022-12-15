**free

ctl-opt dftactgrp(*no);

dcl-pi P1081;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P831.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'
/copy 'qrpgleref/P957.rpgleinc'

dcl-ds T497 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T497 FROM T497 LIMIT 1;

theCharVar = 'Hello from P1081';
dsply theCharVar;
P831();
P248();
P957();
return;