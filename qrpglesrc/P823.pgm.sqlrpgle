**free

ctl-opt dftactgrp(*no);

dcl-pi P823;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P549.rpgleinc'
/copy 'qrpgleref/P488.rpgleinc'

dcl-ds T1045 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1045 FROM T1045 LIMIT 1;

theCharVar = 'Hello from P823';
dsply theCharVar;
P115();
P549();
P488();
return;