**free

ctl-opt dftactgrp(*no);

dcl-pi P1988;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1199.rpgleinc'
/copy 'qrpgleref/P1794.rpgleinc'
/copy 'qrpgleref/P928.rpgleinc'

dcl-ds T141 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T141 FROM T141 LIMIT 1;

theCharVar = 'Hello from P1988';
dsply theCharVar;
P1199();
P1794();
P928();
return;