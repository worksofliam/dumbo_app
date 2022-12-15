**free

ctl-opt dftactgrp(*no);

dcl-pi P129;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds T301 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T301 FROM T301 LIMIT 1;

theCharVar = 'Hello from P129';
dsply theCharVar;
P23();
P61();
P13();
return;