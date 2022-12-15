**free

ctl-opt dftactgrp(*no);

dcl-pi P4066;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P992.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P1456.rpgleinc'

dcl-ds theTable extname('T852') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T852 LIMIT 1;

theCharVar = 'Hello from P4066';
dsply theCharVar;
P992();
P216();
P1456();
return;