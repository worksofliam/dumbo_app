**free

ctl-opt dftactgrp(*no);

dcl-pi P880;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P823.rpgleinc'
/copy 'qrpgleref/P456.rpgleinc'

dcl-ds T210 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T210 FROM T210 LIMIT 1;

theCharVar = 'Hello from P880';
dsply theCharVar;
P604();
P823();
P456();
return;