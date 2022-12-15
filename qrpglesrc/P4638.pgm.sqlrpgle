**free

ctl-opt dftactgrp(*no);

dcl-pi P4638;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3538.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P658.rpgleinc'

dcl-ds theTable extname('T605') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T605 LIMIT 1;

theCharVar = 'Hello from P4638';
dsply theCharVar;
P3538();
P235();
P658();
return;