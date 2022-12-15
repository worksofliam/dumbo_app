**free

ctl-opt dftactgrp(*no);

dcl-pi P972;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P782.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'
/copy 'qrpgleref/P903.rpgleinc'

dcl-ds T357 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T357 FROM T357 LIMIT 1;

theCharVar = 'Hello from P972';
dsply theCharVar;
P782();
P386();
P903();
return;