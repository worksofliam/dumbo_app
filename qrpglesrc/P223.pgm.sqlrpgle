**free

ctl-opt dftactgrp(*no);

dcl-pi P223;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'

dcl-ds T649 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T649 FROM T649 LIMIT 1;

theCharVar = 'Hello from P223';
dsply theCharVar;
P57();
P17();
P189();
return;