**free

ctl-opt dftactgrp(*no);

dcl-pi P24;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds T194 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T194 FROM T194 LIMIT 1;

theCharVar = 'Hello from P24';
dsply theCharVar;
P13();
P3();
P23();
return;