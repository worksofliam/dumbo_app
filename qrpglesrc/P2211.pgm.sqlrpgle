**free

ctl-opt dftactgrp(*no);

dcl-pi P2211;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2013.rpgleinc'
/copy 'qrpgleref/P1106.rpgleinc'
/copy 'qrpgleref/P1798.rpgleinc'

dcl-ds theTable extname('T687') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T687 LIMIT 1;

theCharVar = 'Hello from P2211';
dsply theCharVar;
P2013();
P1106();
P1798();
return;