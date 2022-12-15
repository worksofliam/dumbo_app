**free

ctl-opt dftactgrp(*no);

dcl-pi P960;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P335.rpgleinc'
/copy 'qrpgleref/P945.rpgleinc'
/copy 'qrpgleref/P662.rpgleinc'

dcl-ds T382 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T382 FROM T382 LIMIT 1;

theCharVar = 'Hello from P960';
dsply theCharVar;
P335();
P945();
P662();
return;