**free

ctl-opt dftactgrp(*no);

dcl-pi P1142;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P1092.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'

dcl-ds T152 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T152 FROM T152 LIMIT 1;

theCharVar = 'Hello from P1142';
dsply theCharVar;
P42();
P1092();
P218();
return;