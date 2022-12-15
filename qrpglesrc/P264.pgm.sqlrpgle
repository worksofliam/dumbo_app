**free

ctl-opt dftactgrp(*no);

dcl-pi P264;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P191.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'

dcl-ds T172 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T172 FROM T172 LIMIT 1;

theCharVar = 'Hello from P264';
dsply theCharVar;
P6();
P191();
P66();
return;