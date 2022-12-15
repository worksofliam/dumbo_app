**free

ctl-opt dftactgrp(*no);

dcl-pi P1506;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P897.rpgleinc'
/copy 'qrpgleref/P830.rpgleinc'

dcl-ds T947 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T947 FROM T947 LIMIT 1;

theCharVar = 'Hello from P1506';
dsply theCharVar;
P297();
P897();
P830();
return;