**free

ctl-opt dftactgrp(*no);

dcl-pi P642;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P311.rpgleinc'
/copy 'qrpgleref/P297.rpgleinc'

dcl-ds T622 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T622 FROM T622 LIMIT 1;

theCharVar = 'Hello from P642';
dsply theCharVar;
P236();
P311();
P297();
return;