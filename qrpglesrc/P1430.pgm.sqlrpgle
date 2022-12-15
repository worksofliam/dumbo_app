**free

ctl-opt dftactgrp(*no);

dcl-pi P1430;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P807.rpgleinc'
/copy 'qrpgleref/P1170.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'

dcl-ds T1407 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1407 FROM T1407 LIMIT 1;

theCharVar = 'Hello from P1430';
dsply theCharVar;
P807();
P1170();
P235();
return;