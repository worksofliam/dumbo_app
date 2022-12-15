**free

ctl-opt dftactgrp(*no);

dcl-pi P257;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'

dcl-ds theTable extname('T67') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T67 LIMIT 1;

theCharVar = 'Hello from P257';
dsply theCharVar;
P201();
P218();
P66();
return;