**free

ctl-opt dftactgrp(*no);

dcl-pi P5431;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5208.rpgleinc'
/copy 'qrpgleref/P3725.rpgleinc'
/copy 'qrpgleref/P3077.rpgleinc'

dcl-ds T1352 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1352 FROM T1352 LIMIT 1;

theCharVar = 'Hello from P5431';
dsply theCharVar;
P5208();
P3725();
P3077();
return;