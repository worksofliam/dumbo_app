**free

ctl-opt dftactgrp(*no);

dcl-pi P3490;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P1227.rpgleinc'
/copy 'qrpgleref/P1239.rpgleinc'

dcl-ds T542 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T542 FROM T542 LIMIT 1;

theCharVar = 'Hello from P3490';
dsply theCharVar;
P38();
P1227();
P1239();
return;